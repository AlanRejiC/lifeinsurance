package com.cognizant.app;



import org.junit.Before;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
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
    
    
}
