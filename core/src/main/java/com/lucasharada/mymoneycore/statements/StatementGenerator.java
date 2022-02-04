package com.lucasharada.mymoneycore.statements;

import com.lucasharada.mymoneycore.bookkeeping.JournalEntry;

import java.util.List;

public interface StatementGenerator {
    IncomeStatement incomeStatement(List<JournalEntry> entries);
    BalanceSheet balanceSheet(List<JournalEntry> entries);
    CashFlowStatement cashFlowStatement(List<JournalEntry> entries);
}
