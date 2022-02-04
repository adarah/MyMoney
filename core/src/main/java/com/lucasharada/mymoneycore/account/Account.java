package com.lucasharada.mymoneycore.account;


import javax.money.MonetaryAmount;
import java.util.List;

public abstract class Account {
    private long id;
    private List<Credit> credits;
    private List<Debit> debits;

    // Balance
    public MonetaryAmount balance() {
    }
}
