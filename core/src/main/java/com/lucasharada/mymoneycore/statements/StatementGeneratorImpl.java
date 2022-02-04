package com.lucasharada.mymoneycore.statements;

import com.lucasharada.mymoneycore.bookkeeping.JournalEntry;

import java.util.List;

public class StatementGeneratorImpl implements StatementGenerator {
    @Override
    public IncomeStatement incomeStatement(List<JournalEntry> entries) {
        return null;
    }

    @Override
    public BalanceSheet balanceSheet(List<JournalEntry> entries) {
        return null;
    }

    @Override
    public CashFlowStatement cashFlowStatement(List<JournalEntry> entries) {
        return null;
    }
}
