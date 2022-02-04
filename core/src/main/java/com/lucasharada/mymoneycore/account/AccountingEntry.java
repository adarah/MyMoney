package com.lucasharada.mymoneycore.account;

import javax.money.MonetaryAmount;

public abstract sealed class AccountingEntry permits Credit, Debit {

    public long accountId;
    public MonetaryAmount amount;

    AccountingEntry(long accountId, MonetaryAmount amount) {
        if (amount.isNegativeOrZero()) {
            throw new IllegalArgumentException("Credit and Debit must always be positive");
        }
        this.amount = amount;
        this.accountId = accountId;
    }
}
