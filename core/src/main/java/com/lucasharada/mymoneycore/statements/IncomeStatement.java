package com.lucasharada.mymoneycore.statements;

import java.time.LocalDate;

/**
 * IncomeStatement is a summary of a business's revenues and expenses over a
 * period of time.
 */
@Builder
public record IncomeStatement(LocalDate startDate, LocalDate endDate) {
}
