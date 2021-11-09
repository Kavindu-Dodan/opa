package keptn


test_allow_alice {
    allow with input as {"sub" : "eve", "action": "read", "project" : "SockShop", "stage": null}
}

test_allow_eve {
    allow with input as {"sub" : "eve", "action": "read", "project" : "SockShop", "stage": null}
}

test_fail_eve_write {
    not allow with input as {"sub" : "eve", "action": "write", "project" : "SockShop", "stage": null}
}

