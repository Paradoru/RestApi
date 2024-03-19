package com.example.buysell.services;
import com.example.buysell.models.Buyers;
import com.example.buysell.repository.BuyersRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.apache.coyote.Response;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class BuyersService {
    private final BuyersRepository buyersRepository;
    public List<Buyers> listBuyers() { return buyersRepository.findAll(); }
    public Buyers getBuyersById(Long id){
        return buyersRepository.findById(id).orElse(null);
    }
    public Buyers saveBuyers(Buyers buyers){
        buyersRepository.save(buyers);
        return buyers;
    }
    public Buyers deleteBuyer(Long id){
        Buyers buyers = buyersRepository.findById(id).orElse(null);
        if(buyers != null){
            buyersRepository.deleteById(id);
            return buyers;
        }
        return null;
    }
    public Buyers updateBuyer(Buyers buyerData, Long id){
        Buyers buyers = buyersRepository.findById(id).orElse(null);
        if (buyers != null){
            buyers.setFirst_name(buyerData.getFirst_name());
            buyers.setLast_name(buyerData.getLast_name());
            buyers.setPhone_number(buyerData.getPhone_number());
            buyers.setEmail(buyerData.getEmail());
            buyersRepository.save(buyers);
            return buyers;
        }
        return null;
    }
}
