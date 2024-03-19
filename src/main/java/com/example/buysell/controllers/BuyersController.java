package com.example.buysell.controllers;

import com.example.buysell.models.Buyers;
import com.example.buysell.services.BuyersService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class BuyersController {
    private final BuyersService buyersService;

    @GetMapping("/buyers")
    public List<Buyers> buyers() {
        return buyersService.listBuyers();
    }

    @GetMapping("/buyers/{id}")
    public Buyers buyerInfo(@PathVariable Long id) {
        return buyersService.getBuyersById(id);
    }

    @PostMapping("/buyers/create")
    public Buyers createBuyer(@RequestBody Buyers buyer) {
        return buyersService.saveBuyers(buyer);
    }

    @DeleteMapping("/buyers/delete/{id}")
    public Buyers deleteBuyer(@PathVariable Long id) {
        return buyersService.deleteBuyer(id);
    }

    @PutMapping("/buyers/update/{id}")
    public Buyers updateBuyer(@RequestBody Buyers buyer, @PathVariable Long id){
        return buyersService.updateBuyer(buyer, id);
    }
}
