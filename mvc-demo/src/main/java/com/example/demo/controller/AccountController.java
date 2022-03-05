package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.binder.NameTypeEditor;
import com.example.demo.ds.Account;
import com.example.demo.repo.AccountRepo;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	private final AccountRepo accountRepo;

	public AccountController(AccountRepo accountRepo) {
		super();
		this.accountRepo = accountRepo;
	}
	
	@GetMapping
	public String getCreateForm(Model model) {
		model.addAttribute("account", new Account());
		return "createForm";
	}
 
    @PostMapping
    public String create(@ModelAttribute("account")Account account, BindingResult bindingResult){
    	
//    	if(bindingResult.hasErrors()) {
//    		return "createForm";
//    	}
    	
    	
        System.out.println("Hello Post Mapping!");
        accountRepo.save(account);
        return "redirect:/account/all";
    }

    @GetMapping("all")
    public String showAllAccount(Model model){
        model.addAttribute("accounts",accountRepo.findAll());
        return "views";
    }
	
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
    	binder.registerCustomEditor(String.class, new NameTypeEditor());
    }
    
}
