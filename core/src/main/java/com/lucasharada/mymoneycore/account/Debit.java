package com.lucasharada.mymoneycore.account;

import javax.money.MonetaryAmount;

public final class Debit extends AccountingEntry {
    Debit(long accountId, MonetaryAmount amount) {
        super(accountId, amount);
    }
}
