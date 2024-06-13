package com.emp.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.emp.mvc.service.UserService;
import com.emp.mvc.util.PagingVO;
import com.emp.mvc.vo.User;

@Controller
public class BoardController {
	
	@Value("${file.upload-dir}")
	private String uploadDir;
	
	// 업로드할 디렉토리를 설정합니다. 여기서는 사용자 홈 디렉토리를 사용합니다.
    private static final String UPLOAD_DIRECTORY = "uploaded_files";
    
    @Autowired
    private ServletContext servletContext;

    @Autowired
    private UserService userService;

    @RequestMapping("/board")
    public String getAllUsers(PagingVO vo, Model model, 
    		@RequestParam(value="nowPage", required=false)String nowPage
    		, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {  	
    	
		// 상품 분류별 거래처 목록 행의 수
		int total = userService.usersTotalCount();
		System.out.println("total : " + total);
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		
		Map<String, Object> map = new HashMap();
		map.put("start", vo.getStart());
		map.put("end", vo.getEnd());
		
		model.addAttribute("userList", userService.getUsers(map));
		
        return "main";
    }
    
    @RequestMapping(value="/loadPage", method = RequestMethod.GET, produces = "application/json")
    @ResponseBody
    public Map<String, Object> loadPage(PagingVO vo, Model model, 
    		@RequestParam(value="nowPage", required=false)String nowPage
    		, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {  	
    	
		// 상품 분류별 거래처 목록 행의 수
		int total = userService.usersTotalCount();
		System.out.println("total : " + total);
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		Map<String, Object> map = new HashMap();
		map.put("start", vo.getStart());
		map.put("end", vo.getEnd());
		
		Map<String, Object> responseData = new HashMap<>();
		responseData.put("message", "This is a sample response from the server.");
        responseData.put("status", "success");
        responseData.put("paging", vo);
        responseData.put("userList", userService.getUsers(map));
		
        return responseData;
    }
    
    @RequestMapping("/insertUserPage")
    public String insertUserPage(Model model) {  	
    	
		
		
        return "insertUserPage";
    }
    
    @PostMapping("/upload")
    public String handleFileUpload(@RequestParam("file") MultipartFile file,
                                   @RequestParam("textfield4") String name,
                                   @RequestParam("textfield22") String ssn,
                                   RedirectAttributes redirectAttributes) {
        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "파일이 비어 있습니다.");
            return "redirect:insertUserPage";
        }

        try {
        	
        	String rootPath = servletContext.getRealPath("/");
        	// 애플리케이션 시작 시 업로드 디렉토리를 확인하고 생성합니다.
            File uploadDir = new File(rootPath + UPLOAD_DIRECTORY);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }
        	
        	byte[] bytes = file.getBytes();
        	System.out.println(rootPath + UPLOAD_DIRECTORY + File.separator + file.getOriginalFilename());
            Path path = Paths.get(rootPath + UPLOAD_DIRECTORY + File.separator + file.getOriginalFilename());
            Files.write(path, bytes);

            redirectAttributes.addFlashAttribute("message",
                    "성공적으로 업로드 되었습니다: " + file.getOriginalFilename());
            redirectAttributes.addFlashAttribute("name", name);
            redirectAttributes.addFlashAttribute("ssn", ssn);


        } catch (IOException e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("message", "파일 업로드 중 오류가 발생했습니다.");
        }

        return "redirect:insertUserPage";
    }
}
