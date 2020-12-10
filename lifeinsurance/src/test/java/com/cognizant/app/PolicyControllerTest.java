package com.cognizant.app;



import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.cognizant.controller.PolicyController;
import com.cognizant.service.PolicyService;

/**
 * 
 * @author SA
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class PolicyControllerTest {
    
    @InjectMocks
    private PolicyController policyController;
    
    private MockMvc mockMvc;
    
    @Mock
    private PolicyService policyservice;
    
    
    @SuppressWarnings("deprecation")
    @Before
    public void setUp() throws Exception{
        MockitoAnnotations.initMocks(this);
        this.mockMvc=MockMvcBuilders.standaloneSetup(policyController).build();
    }
    
    @Test 
    public void getPolicyPageTest() throws Exception {
        this.mockMvc.perform(get("/getPolicyPage")).andExpect(status().isOk());
    }
    
    @Test
    public void showPolicyEditTest() throws Exception {
        /**((ResultActions) ((MockHttpServletRequestBuilder) this.mockMvc.perform(get("/getPolicyEdit"))
        .andDo(print()))
        .param("policyName","Child Policy"))
        .andExpect(status().isOk());
        */
        this.mockMvc.perform(get("/getPolicyEdit?policyName=Child Policy")).andExpect(status().isOk()).andExpect(view().name("policyEdit"));
    }
    
   @Test 
   public void getPolicySaveTest() throws Exception {
       this.mockMvc.perform(get("/getPolicySave")).andExpect(status().isOk());
   }
    
   @Test
   public void showPolicyDeleteTest() throws Exception {
       this.mockMvc.perform(get("/getPolicyDelete?policyName=Child Policy")).andExpect(status().isOk()).andExpect(view().name("policyDelete"));
   }
   @Test 
   public void getInsurancePageTest() throws Exception {
       this.mockMvc.perform(get("/getPolicyAdd")).andExpect(status().isOk());
   }
   
   @Test
   public void getPaymentPageTest() throws Exception {
       this.mockMvc.perform(post("/getPolicyAdd")).andExpect(status().isOk());
   }
}
