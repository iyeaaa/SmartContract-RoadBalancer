# Blockchain Coursework

블록체인 수업 실습 코드 모음 (아카이브).

| 디렉터리 | 내용 |
| --- | --- |
| [`contracts/`](contracts) | Solidity. `RandomRedirectBalancer.sol` — 등록된 서버 목록 중 하나를 무작위로 반환하는 온체인 로드밸런서 |
| [`scripts/`](scripts), [`tests/`](tests) | Remix IDE 기본 배포/테스트 템플릿 |
| [`python-chain/`](python-chain) | Python/Flask PoW 블록체인 구현 (구 `iyeaaa/Blockchain` 저장소) |

> `RandomRedirectBalancer.sol`의 난수는 `block.timestamp`/`blockhash` 기반이라 채굴자가 조작할 수 있고, `addServer()`에 접근 제어가 없다. 실습용 코드이며 운영 환경에 사용하면 안 된다.

원본 Remix 워크스페이스 설명은 [`README.txt`](README.txt) 참고.
