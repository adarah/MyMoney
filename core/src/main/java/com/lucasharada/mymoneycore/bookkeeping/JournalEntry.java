package com.lucasharada.mymoneycore.bookkeeping;

import com.lucasharada.mymoneycore.account.Credit;
import lombok.AllArgsConstructor;

import java.time.Instant;
import java.util.List;


@AllArgsConstructor
public class JournalEntry {
    private long id;
    private Instant time;
    private List<JournalLine> lines;
    private String description;

    private class JournalLine {
        private List<Credit> credits;
        private List<Credit> debits;
    }
}
