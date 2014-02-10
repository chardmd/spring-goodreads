package com.springdemo.goodreads.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.springdemo.goodreads.model.Reader;
import com.springdemo.goodreads.service.GoodReadService;

/**
 * @author Richard Dimalanta
 */
@Controller
@SessionAttributes(types = Reader.class)
public class ReaderController {

    private final GoodReadService goodReadService;


    @Autowired
    public ReaderController(GoodReadService goodReadService) {
        this.goodReadService = goodReadService;
    }
    
    @RequestMapping(value = "/readers/new", method = RequestMethod.GET)
    public String initCreationForm(Map<String, Object> model) {
        Reader reader = new Reader();
        model.put("reader", reader);
        return "readers/createOrUpdateReaderForm";
    }

    @RequestMapping(value = "/readers/new", method = RequestMethod.POST)
    public String processCreationForm(Reader reader, BindingResult result, SessionStatus status) {
        if (result.hasErrors()) {
            return "readers/createOrUpdateReaderForm";
        } else {
        	
            this.goodReadService.saveReader(reader);
            status.setComplete();
            
            return "redirect:/readers/" + reader.getId();
        }
    }

    @RequestMapping(value = "/readers/find", method = RequestMethod.GET)
    public String initFindForm(Map<String, Object> model) {
        model.put("reader", new Reader());
        return "readers/findReaders";
    }
    
    /**
     * Custom handler for displaying a reader.
     *
     * @param readerId the ID of the reader to display
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping("/readers/{readerId}")
    public ModelAndView showOwner(@PathVariable("readerId") int readerId) {
        ModelAndView mav = new ModelAndView("readers/readerDetails");
        mav.addObject(this.goodReadService.findReaderById(readerId));
        return mav;
    }

}
