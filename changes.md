Mapped `capslock` key to `esc`using the command below.
```shell
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x700000029}]}'
```

You can see the user mappings using the command below.
```shell
hidutil property --get "UserKeyMapping"
```

You should research how to dump the query but there is an option in hidl to do this.
