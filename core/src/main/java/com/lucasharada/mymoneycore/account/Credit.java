package com.lucasharada.mymoneycore.account;

import javax.money.MonetaryAmount;

public final class Credit extends AccountingEntry {
    Credit(long accountId, MonetaryAmount amount) {
        super(accountId, amount);
    }
}
