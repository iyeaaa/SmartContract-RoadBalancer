# Python PoW Chain

Flask 기반 작업증명(PoW) 블록체인 실습 코드. 기존 `iyeaaa/Blockchain` 저장소에서 이전.

| 파일 | 설명 |
| --- | --- |
| `blockchain.py` | 체인 + PoW 기본형 (채굴, 체인 조회, 유효성 검증) |
| `yeincoin.py` | 위의 상위 버전. 트랜잭션과 노드 간 합의(분산 원장) 추가 |

`yeincoin.py`가 `blockchain.py`의 상위집합이므로 실행은 `yeincoin.py` 기준.

```bash
pip install -r requirements.txt
python yeincoin.py
```
