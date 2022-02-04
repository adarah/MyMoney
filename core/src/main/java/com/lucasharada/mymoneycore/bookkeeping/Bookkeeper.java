package com.lucasharada.mymoneycore.bookkeeping;

import com.lucasharada.mymoneycore.statements.StatementGenerator;

public abstract class Bookkeeper {
    @Autowired
    StatementGenerator statementGenerator;
}
