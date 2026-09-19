# Rock Paper Scissors

<p align="center">
  <img src="taskagitmakas.jpg" width="280" alt="Rock Paper Scissors hero artwork" />
</p>

<p align="center">
  <img alt="Platform" src="https://img.shields.io/badge/platform-iOS-000000?logo=apple&logoColor=white" />
  <img alt="Swift" src="https://img.shields.io/badge/Swift-5.0-F05138?logo=swift&logoColor=white" />
  <img alt="UIKit" src="https://img.shields.io/badge/UI-UIKit-2396F3" />
  <img alt="iOS" src="https://img.shields.io/badge/iOS-11.4%2B-lightgrey" />
  <img alt="License" src="https://img.shields.io/badge/license-MIT-blue" />
</p>

iOS UIKit game where you play rock, paper, scissors against the computer in first-to-five matches.

**About:** `iOS Rock Paper Scissors game in Swift and UIKit. First-to-five matches, win streaks, and a resettable scoreboard.`

## Topics

20 GitHub topics (same count as the current sidebar), mixing high-traffic tags with game-specific ones. Replaces typos such as `game-developement` and misleading tags such as `swift-game-engine`.

<p align="center">
  <a href="https://github.com/topics/ios"><img alt="ios" src="https://img.shields.io/badge/ios-111111?logo=apple&logoColor=white" /></a>
  <a href="https://github.com/topics/swift"><img alt="swift" src="https://img.shields.io/badge/swift-F05138?logo=swift&logoColor=white" /></a>
  <a href="https://github.com/topics/uikit"><img alt="uikit" src="https://img.shields.io/badge/uikit-2396F3" /></a>
  <a href="https://github.com/topics/xcode"><img alt="xcode" src="https://img.shields.io/badge/xcode-147EFB?logo=xcode&logoColor=white" /></a>
  <a href="https://github.com/topics/ios-app"><img alt="ios-app" src="https://img.shields.io/badge/ios--app-000000" /></a>
  <a href="https://github.com/topics/ios-application"><img alt="ios-application" src="https://img.shields.io/badge/ios--application-333333" /></a>
  <a href="https://github.com/topics/ios-game"><img alt="ios-game" src="https://img.shields.io/badge/ios--game-6E40C9" /></a>
  <a href="https://github.com/topics/ios-swift"><img alt="ios-swift" src="https://img.shields.io/badge/ios--swift-F05138" /></a>
  <a href="https://github.com/topics/ios-demo"><img alt="ios-demo" src="https://img.shields.io/badge/ios--demo-555555" /></a>
  <a href="https://github.com/topics/swift5"><img alt="swift5" src="https://img.shields.io/badge/swift5-F05138" /></a>
  <a href="https://github.com/topics/swift-language"><img alt="swift-language" src="https://img.shields.io/badge/swift--language-F05138" /></a>
  <a href="https://github.com/topics/swift-game"><img alt="swift-game" src="https://img.shields.io/badge/swift--game-C9341C" /></a>
  <a href="https://github.com/topics/game"><img alt="game" src="https://img.shields.io/badge/game-2EA44F" /></a>
  <a href="https://github.com/topics/game-development"><img alt="game-development" src="https://img.shields.io/badge/game--development-2EA44F" /></a>
  <a href="https://github.com/topics/mobile-app"><img alt="mobile-app" src="https://img.shields.io/badge/mobile--app-0A66C2" /></a>
  <a href="https://github.com/topics/mobile-game"><img alt="mobile-game" src="https://img.shields.io/badge/mobile--game-0A66C2" /></a>
  <a href="https://github.com/topics/beginner"><img alt="beginner" src="https://img.shields.io/badge/beginner-EAB308" /></a>
  <a href="https://github.com/topics/storyboard"><img alt="storyboard" src="https://img.shields.io/badge/storyboard-8B5CF6" /></a>
  <a href="https://github.com/topics/rock-paper-scissors"><img alt="rock-paper-scissors" src="https://img.shields.io/badge/rock--paper--scissors-16A34A" /></a>
  <a href="https://github.com/topics/stone-paper-scissors"><img alt="stone-paper-scissors" src="https://img.shields.io/badge/stone--paper--scissors-15803D" /></a>
</p>

`ios` · `swift` · `uikit` · `xcode` · `ios-app` · `ios-application` · `ios-game` · `ios-swift` · `ios-demo` · `swift5` · `swift-language` · `swift-game` · `game` · `game-development` · `mobile-app` · `mobile-game` · `beginner` · `storyboard` · `rock-paper-scissors` · `stone-paper-scissors`

## Highlights

- Player vs computer with random computer moves
- Shared `GameRules` resolver instead of duplicated button logic
- First player to 5 points wins the match
- Current streak and best streak on the scoreboard
- Match lock after a winner, plus **Maçı Sıfırla** to start again

## How to play

Pick **Taş**, **Kağıt**, or **Makas**. The computer picks at the same time.

| You | Computer | Result |
| --- | --- | --- |
| Rock | Scissors | You win |
| Paper | Rock | You win |
| Scissors | Paper | You win |
| Same move | Same move | Draw |
| Anything else | Counter | Computer wins |

A win adds 1 point and grows your streak. A loss resets the streak. Draws leave the score unchanged. The first side to 5 points takes the match.

## Architecture

```text
ViewController  →  GameRules.playRound(player, computer)
     UI                    Move / RoundOutcome
```

| File | Role |
| --- | --- |
| `ViewController.swift` | Buttons, scoreboard, match chrome, reset |
| `GameRules.swift` | Moves, win conditions, first-to-five constant |

Open `TasKagitMakas/TasKagitMakas.xcodeproj` in Xcode and run the **TasKagitMakas** scheme.

## Screenshots

<p>
  <img src="pic1.png" width="220" alt="Main board with rock, paper, and scissors buttons" />
  <img src="res1.png" width="220" alt="Player chooses rock" />
  <img src="res2.png" width="220" alt="Round result and live scores" />
</p>

<p>
  <img src="res3.png" width="220" alt="Paper round against the computer" />
  <img src="res4.png" width="220" alt="Scissors round against the computer" />
  <img src="res5.png" width="220" alt="Updated player and computer points" />
</p>

## License

MIT © Halil OZEL. See the license text below.

<details>
<summary>MIT License</summary>

```
MIT License

Copyright (c) 2023 Halil OZEL

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

</details>
