package com.example.buysell.controllers;

import com.example.buysell.models.Sellers;
import com.example.buysell.services.SellersService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class SellersController {
    private final SellersService sellersService;

    @GetMapping("/sellers")
    public List<Sellers> sellers() {
        return sellersService.listSellers();
    }

    @GetMapping("/sellers/{id}")
    public Sellers sellerInfo(@PathVariable Long id) {
        return sellersService.getSellerById(id);
    }

    @PostMapping("/sellers/create")
    public Sellers createSeller(@RequestBody Sellers seller) {
        return sellersService.saveSeller(seller);
    }

    @DeleteMapping("/sellers/delete/{id}")
    public Sellers deleteSeller(@PathVariable Long id) {
        return sellersService.deleteSeller(id);
    }

    @PutMapping("/sellers/update/{id}")
    public Sellers updateSeller(@RequestBody Sellers seller, @PathVariable Long id){
        return sellersService.updateSeller(seller, id);
    }
}
