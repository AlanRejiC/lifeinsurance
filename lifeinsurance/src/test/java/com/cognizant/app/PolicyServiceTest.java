package com.cognizant.app;

import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.when;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import com.cognizant.model.Policy;
import com.cognizant.repository.PolicyRepo;
import com.cognizant.service.PolicyService;

/**
 * 
 * @author SA
 *
 */

@RunWith(MockitoJUnitRunner.class)
public class PolicyServiceTest {
    
    @InjectMocks
    private PolicyService policyservice;
    @Mock
    private PolicyRepo policyRepo;
    @Mock
    private Policy policy;
    
    
    @Test
    public void findPolicyNameTest() {
        policyservice.findPolicyName(Mockito.anyString());
        Mockito.verify(policyRepo, Mockito.times(1)).getOne(Mockito.anyString());
    }
    
    @Test
    public void getAllTest() {
        policyservice.getAll();
        Mockito.verify(policyRepo, Mockito.times(1)).findAll();
    }
    
    @SuppressWarnings("deprecation")
    @Test
    public void savePolicyTest() {
        policyservice.savePolicy((Policy)Mockito.anyObject());
        Mockito.verify(policyRepo, Mockito.times(1)).save((Policy)Mockito.anyObject());
    }
    
    @Test
    public void deletePolicyTest() {
        policyservice.deletePolicy((Policy)Mockito.anyObject());
        Mockito.verify(policyRepo, Mockito.times(1)).delete((Policy)Mockito.anyObject());
    }
    
    /**
    @Test 
    public void policyNameValiadtionTest() {
        try {
            policyservice.policyNameValiadtion((Policy)Mockito.anyObject());
            when(this.policy.getPolicyName()).thenReturn("Child Policy");
            when(policyservice.findPolicyName(Mockito.anyString())).thenReturn(policy);
            
           
        } catch (NullPointerException e) {
            // TODO: handle exception
            Mockito.verify(policyRepo, Mockito.times(1)).getOne(Mockito.anyString());
        }
        
    }*/
    
}
