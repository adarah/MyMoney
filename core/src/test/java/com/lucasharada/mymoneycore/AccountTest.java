package com.lucasharada.mymoneycore;

import com.lucasharada.mymoneycore.account.Account;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;


public class AccountTest {
    @BeforeAll
    static void setup() {
    }

    @Test
    void isEmpty() {
        var wallet = new Account();
        assertThat(wallet.isEmpty()).isTrue();
    }
}
