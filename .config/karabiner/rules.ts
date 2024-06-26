import fs from "fs";
import { KarabinerRules } from "./types";
import { createHyperSubLayers, app, open } from "./utils";

const rules: KarabinerRules[] = [
  // Define the Hyper key itself
  {
    description: "Hyper Key (⌃⌥⇧⌘)",
    manipulators: [
      {
        description: "Caps Lock -> Hyper Key",
        from: {
          key_code: "caps_lock",
        },
        to: [
          {
            key_code: "left_shift",
            modifiers: ["left_command", "left_control", "left_option"],
          },
        ],
        to_if_alone: [
          {
            key_code: "escape",
          },
        ],
        type: "basic",
      },
      //      {
      //        type: "basic",
      //        description: "Disable CMD + Tab to force Hyper Key usage",
      //        from: {
      //          key_code: "tab",
      //          modifiers: {
      //            mandatory: ["left_command"],
      //          },
      //        },
      //        to: [
      //          {
      //            key_code: "tab",
      //          },
      //        ],
      //      },
    ],
  },
  ...createHyperSubLayers({
    // o = "Open" applications
    o: {
      a: app("Arc"),
      b: app("Obsidian"),
      c: app("Clockify Desktop"),
      f: app("Finder"),
      h: open(
        "notion://www.notion.so/stellatehq/7b33b924746647499d906c55f89d5026"
      ),
      i: app("IntelliJ IDEA Ultimate"),
      n: app("Notion"),
      p: app("Bitwarden"),
      s: app("Slack"),
      t: app("iterm"),
      v: app("Visual Studio Code"),
      w: app("WhatsApp"),
    },

    // w = "Window" via rectangle.app
    w: {
      semicolon: {
        description: "Window: Hide",
        to: [
          {
            key_code: "h",
            modifiers: ["right_command"],
          },
        ],
      },
      y: {
        description: "Window: First Third",
        to: [
          {
            key_code: "left_arrow",
            modifiers: ["right_option", "right_control"],
          },
        ],
      },
      k: {
        description: "Window: Top Half",
        to: [
          {
            key_code: "up_arrow",
            modifiers: ["right_option", "right_command"],
          },
        ],
      },
      j: {
        description: "Window: Bottom Half",
        to: [
          {
            key_code: "down_arrow",
            modifiers: ["right_option", "right_command"],
          },
        ],
      },
      o: {
        description: "Window: Last Third",
        to: [
          {
            key_code: "right_arrow",
            modifiers: ["right_option", "right_control"],
          },
        ],
      },
      h: {
        description: "Window: Left Half",
        to: [
          {
            key_code: "left_arrow",
            modifiers: ["right_option", "right_command"],
          },
        ],
      },
      l: {
        description: "Window: Right Half",
        to: [
          {
            key_code: "right_arrow",
            modifiers: ["right_option", "right_command"],
          },
        ],
      },
      f: {
        description: "Window: Full Screen",
        to: [
          {
            key_code: "f",
            modifiers: ["right_option", "right_command"],
          },
        ],
      },
      u: {
        description: "Window: Previous Tab",
        to: [
          {
            key_code: "tab",
            modifiers: ["right_control", "right_shift"],
          },
        ],
      },
      i: {
        description: "Window: Next Tab",
        to: [
          {
            key_code: "tab",
            modifiers: ["right_control"],
          },
        ],
      },
      n: {
        description: "Window: Next Window",
        to: [
          {
            key_code: "grave_accent_and_tilde",
            modifiers: ["right_command"],
          },
        ],
      },
      b: {
        description: "Window: Back",
        to: [
          {
            key_code: "open_bracket",
            modifiers: ["right_command"],
          },
        ],
      },
      // Note: No literal connection. Both f and n are already taken.
      m: {
        description: "Window: Forward",
        to: [
          {
            key_code: "close_bracket",
            modifiers: ["right_command"],
          },
        ],
      },
      d: {
        description: "Window: Next display",
        to: [
          {
            key_code: "right_arrow",
            modifiers: ["right_control", "right_option", "right_command"],
          },
        ],
      },
    },

    // s = "Numbers" It doesn't make sense, but it's easy to use
    s: {
      h: {
        to: [
          {
            key_code: "0",
          },
        ],
      },
      j: {
        to: [
          {
            key_code: "1",
          },
        ],
      },
      k: {
        to: [
          {
            key_code: "2",
          },
        ],
      },
      l: {
        to: [
          {
            key_code: "3",
          },
        ],
      },
      semicolon: {
        to: [
          {
            key_code: "4",
          },
        ],
      },
      u: {
        to: [
          {
            key_code: "5",
          },
        ],
      },
      i: {
        to: [
          {
            key_code: "6",
          },
        ],
      },
      o: {
        to: [
          {
            key_code: "7",
          },
        ],
      },
      p: {
        to: [
          {
            key_code: "8",
          },
        ],
      },
      open_bracket: {
        to: [
          {
            key_code: "9",
          },
        ],
      },
      period: {
        to: [
          {
            key_code: "period",
          },
        ],
      },
      hyphen: {
        to: [
          {
            key_code: "hyphen",
          },
        ],
      },
      delete_or_backspace: {
        to: [
          {
            key_code: "delete_or_backspace",
          },
        ],
      },
    },

    // Doesn't make sense, but it's easy to use
    a: {
      h: {
        to: [{ key_code: "left_arrow" }],
      },
      j: {
        to: [{ key_code: "down_arrow", },],
      },
      k: {
        to: [{ key_code: "up_arrow", },],
      },
      l: {
        to: [{ key_code: "right_arrow", },],
      },
      // Magicmove via homerow.app
      m: {
        to: [{ key_code: "f", modifiers: ["right_control"] }],
      },
      // Scroll mode via homerow.app
      s: {
        to: [{ key_code: "j", modifiers: ["right_control"] }],
      },
      d: {
        to: [{ key_code: "d", modifiers: ["right_shift", "right_command"] }],
      },
      u: {
        to: [{ key_code: "page_down" }],
      },
      i: {
        to: [{ key_code: "page_up" }],
      },
    },

    // Doesn't make sense, but it's easy to use
    // Limiters
    q: {
      u: {
        to: [{ key_code: "9", modifiers: ["left_shift"]}], 
      },
      i: {
        to: [{ key_code: "0", modifiers: ["left_shift"]}], 
      },
      j: {
        to: [{ key_code: "open_bracket" }], 
      },
      k: {
        to: [{ key_code: "close_bracket" }], 
      },
      n: {
        to: [{ key_code: "open_bracket", modifiers: ["left_shift"]}], 
      },
      m: {
        to: [{ key_code: "close_bracket", modifiers: ["left_shift"]}], 
      },
      o: {
        to: [{ key_code: "hyphen", modifiers: ["left_shift"]}], 
      },
    },
  }),
];

fs.writeFileSync(
  "karabiner.json",
  JSON.stringify(
    {
      global: {
        show_in_menu_bar: false,
      },
      profiles: [
        {
          name: "Default",
          complex_modifications: {
            rules,
          },
        },
      ],
    },
    null,
    2
  )
);
