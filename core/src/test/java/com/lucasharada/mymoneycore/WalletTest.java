package com.lucasharada.mymoneycore;

import com.lucasharada.mymoneycore.wallet.Wallet;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;


public class WalletTest {
    @BeforeAll
    static void setup() {
    }

    @Test
    void isEmpty() {
        var wallet = new Wallet();
        assertThat(wallet.isEmpty()).isTrue();
    }
}
