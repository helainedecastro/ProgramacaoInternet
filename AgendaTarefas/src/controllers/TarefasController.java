package controllers;



import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import daos.TarefaDAO;
import models.Tarefa;



@Controller
public class TarefasController {
	@RequestMapping("tarefas/form")
	public String form(){
		System.out.println("Acessando formulario de tarefa.");
		return "tarefas/form";
	}
	
	@RequestMapping(value="tarefas", method=RequestMethod.POST)
	public String gravar(Tarefa c){
		if(c.getDescricao() == null || c.getDescricao().equals("")) {
	        return "tarefas/form2";
	    }
		if(c.getDataFinalizacao() == null || c.getDataFinalizacao().equals("")) {
	        return "tarefas/form2";
	    }
		
		System.out.println("Descricao: " + c.getDescricao());
		
		System.out.println("Data de Finalizacao:" + c.getDataFinalizacao());
		
		TarefaDAO dao = new TarefaDAO();
		dao.inserir(c);
		
		return "tarefas/adicionada";
	}
	
	@RequestMapping(value="tarefas", method=RequestMethod.GET)
	public ModelAndView listar(){
		
		TarefaDAO dao = new TarefaDAO();
		List<Tarefa> tarefas = dao.getLista();
		
		ModelAndView modelAndView = new ModelAndView("tarefas/listar");
		modelAndView.addObject("tarefas", tarefas);
		
		return modelAndView;
	}
	
	@RequestMapping("tarefas/remover")
	public ModelAndView remover(Tarefa c){
		TarefaDAO dao = new TarefaDAO();
		dao.remover(c);
		
		return listar();
		
	}
	
	@RequestMapping("tarefas/selecionar")
	public ModelAndView selecionar(Tarefa c){
		TarefaDAO dao = new TarefaDAO();
		c = dao.getById(c.getId());
		
		ModelAndView modelAndView = new ModelAndView("tarefas/form-alterar");
		modelAndView.addObject("tarefa", c);
		
		return modelAndView;
	}
	
	@RequestMapping("tarefas/alterar")
	public ModelAndView alterar(Tarefa c){
		
		System.out.println(c);
		TarefaDAO dao = new TarefaDAO();
		dao.alterar(c);
		
		return listar();
	}

}






