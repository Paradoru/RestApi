package com.example.buysell.controllers;

import com.example.buysell.models.Sales;
import com.example.buysell.services.SalesService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class SalesController {
    private final SalesService salesService;

    @GetMapping("/sales")
    public List<Sales> sales() {
        return salesService.listSales();
    }

    @GetMapping("/sales/{id}")
    public Sales salesInfo(@PathVariable Long id) {
        return salesService.getSalesById(id);
    }

    @PostMapping("/sales/create")
    public Sales createSales(@RequestBody Sales sales) {
        return salesService.saveSales(sales);
    }

    @DeleteMapping("/sales/delete/{id}")
    public Sales deleteSales(@PathVariable Long id) {
        return salesService.deleteSales(id);
    }

    @PutMapping("/sales/delete/{id}")
    public Sales updateSales(@RequestBody Sales sales,@PathVariable Long id){
        return salesService.UpdateSales(sales,id);
    }
}
