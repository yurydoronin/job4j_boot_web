package ru.job4j.bootweb.controller;

import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.web.servlet.MockMvc;
import ru.job4j.bootweb.SpringBootWebApplication;
import ru.job4j.bootweb.model.Accident;
import ru.job4j.bootweb.service.AccidentService;

import static org.mockito.Mockito.verify;
import static org.springframework.test.util.AssertionErrors.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

/**
 * Test.
 *
 * @author Yury Doronin (doronin.ltd@gmail.com)
 * @version 1.0
 * @since 10.07.2020
 */
@SpringBootTest(classes = SpringBootWebApplication.class)
@AutoConfigureMockMvc
class IndexControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private AccidentService accidentService;

    @Test
    public void returnIndexPageWithAllAccidents() throws Exception {
        this.mockMvc.perform(get("/"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name("index"));
    }

    @Test
    public void returnAddAccidentPage() throws Exception {
        this.mockMvc.perform(get("/accident.do"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name("accident"));
    }

    @Test
    public void saveAccidentAndRedirectToIndex() throws Exception {
        this.mockMvc.perform(post("/add.do")
                .param("name", "Новое нарушение"))
                .andDo(print())
                .andExpect(status().is3xxRedirection());
        ArgumentCaptor<Accident> argument = ArgumentCaptor.forClass(Accident.class);
        verify(accidentService).save(argument.capture());
        assertEquals("name", "Новое нарушение", argument.getValue().getName());
    }

    @Test
    public void returnEditPage() throws Exception {
        this.mockMvc.perform(get("/edit.do").param("id", "1"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(view().name("edit"));
    }

    @Test
    public void deleteAccidentAndRedirectToIndex() throws Exception {
        this.mockMvc.perform(post("/delete.do")
                .param("name", "Новое нарушение"))
                .andDo(print())
                .andExpect(status().is3xxRedirection());
        ArgumentCaptor<Accident> argument = ArgumentCaptor.forClass(Accident.class);
        verify(accidentService).delete(argument.capture());
        assertEquals("name", "Новое нарушение", argument.getValue().getName());
    }
}