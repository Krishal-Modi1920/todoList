package todo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import jakarta.servlet.http.HttpServletRequest;
import todo.Dao.todoDao;
import todo.model.todoModel;

@Controller
public class MainController {
    
    @Autowired
    private todoDao tododao;
    
    @RequestMapping("/")  // Now the mapping will be '/todo/home'
    public String home(Model model) {
        System.out.println("Hello");
        List<todoModel> lists = tododao.getList();
        model.addAttribute("lists", lists);
        return "index";  
    }

    
 // Show add Product Form
 	@RequestMapping("/add_list")
 	public String addProduct(Model m) {
 		m.addAttribute("title", "Add List");
 		return "add_list";
 	}
 	
 	// handle add product form
 	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
 	public RedirectView handleProduct(@ModelAttribute todoModel todomodel, HttpServletRequest request) {
 	    tododao.createList(todomodel);
 	    RedirectView redirectView = new RedirectView();
 	    redirectView.setUrl(request.getContextPath() + "/");
 	    return redirectView;
 	}

 	
	// Delete Handler
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("listId") int listId, HttpServletRequest request) {
		this.tododao.deleteList(listId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	// Update Form
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid, Model model) {
	    todoModel list = tododao.getList(pid);  // Corrected the return type and method call
	    model.addAttribute("list", list);
	    return "update_list";
	}

	
}


