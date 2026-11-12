# 희진 님 홈페이지 사용 안내

R과 쿼토로 만드는 개인 홈페이지예요. 공개 탭은 박사 지원서와 교수 컨택 메일에 링크로 붙이고, 내 화면 전용 탭은 비밀번호를 아는 나만 열 수 있어요.

## 구성

| 구분 | 탭 | 파일 |
| --- | --- | --- |
| 공개 (영어) | About, Research, CV, Notes, Projects, Publications, Contact | `index.qmd`, `research.qmd`, `cv.qmd`, `notes.qmd`와 `notes/`, `projects.qmd`, `publications.qmd`, `contact.qmd` |
| 내 화면 전용 (비밀번호 잠금) | My space, Roadmap, Schools, Reading list, English | `private/` 폴더의 `.qmd` 5개 |

| 설정 | 내용 |
| --- | --- |
| 공개 화면 | 테라코타 색, 제목 나눔명조, 본문 노토 산스 |
| 내 화면 | 오른쪽 아래 "오늘의 색" 버튼(연분홍, 연보라, 분홍 + 연보라, 테라코타, 색상표 직접 선택)과 "글씨체" 버튼(4가지) |
| 디자인 파일 | 색과 글씨체 기본값은 `styles.css`, 버튼 기능은 `assets/me.html` |

공개 페이지의 대괄호 `[ ]` 부분은 직접 채워야 해요.

## 내 화면 켜고 끄기

- **켜기**: 홈페이지 주소 끝에 `?me=on`을 붙여서 한 번 열어요. 예: `https://내아이디.github.io/heejin-site/?me=on`
  - 그 브라우저는 기억해서, 다음부터는 그냥 들어가도 내 화면 전용 탭과 색·글씨체 버튼이 보여요.
  - 휴대폰이나 다른 컴퓨터에서는 한 번씩 다시 열어야 해요.
- **끄기**: 주소 끝에 `?me=off`를 붙여서 열면 다른 사람이 보는 화면으로 돌아가요.
- 이 링크는 **색과 메뉴를 바꾸는 기능**이에요. 내 화면 전용 탭의 내용은 비밀번호로 따로 지켜요.

## 처음 한 번 준비하기

1. **프로그램 설치**
   - RStudio 최신 버전 (쿼토가 함께 들어 있어요)
   - Node.js (비밀번호 잠금 도구용)
   - 깃허브 데스크톱 (파일을 깃허브에 올리는 프로그램)
   - 윈도우라면 Git도 설치해서 Git Bash를 쓸 수 있게 해 두세요.
   - 설치 후 RStudio 아래쪽 Terminal 탭에서 `quarto --version`을 입력해 숫자가 나오면 준비 완료예요.
2. **폴더 열기**: RStudio에서 File → New Project → Existing Directory → `heejin-site` 폴더 선택
3. **미리 보기**: Terminal에서 `quarto preview`
   - 브라우저 주소 끝에 `?me=on`을 붙이면 내 화면도 미리 볼 수 있어요.
   - 미리 보기에서는 내 화면 전용 탭이 잠기지 않은 상태로 보여요. 내 컴퓨터 안에서만 보이는 거라 괜찮아요.
   - 끝낼 때는 Terminal에서 Ctrl+C

## 인터넷에 올리기

1. Terminal에서 `./build.sh` 실행 (윈도우는 Git Bash에서 `bash build.sh`)
2. 비밀번호를 입력해요. 길고 남이 추측하기 어렵게 정하세요.
3. `docs/private/myspace.html`을 브라우저로 열어서 **비밀번호 창이 먼저 뜨는지** 확인해요.
4. 깃허브 데스크톱에서 File → Add local repository로 `heejin-site` 폴더를 추가하고, Publish repository로 공개 저장소를 만들어요.
   - 변경 목록에 `private/*.qmd` 파일이 **없는지** 꼭 확인하세요. `.gitignore`가 막아줘요.
5. 깃허브 웹사이트의 저장소 Settings → Pages에서 Branch를 `main`, 폴더를 `/docs`로 저장해요.
6. 몇 분 뒤 화면 위쪽에 홈페이지 주소가 나타나요.

이후에 글을 고칠 때는 **build.sh 실행 → 비밀번호 창 확인 → Commit → Push**만 반복하면 돼요.

## 꼭 지킬 것

- **`quarto publish` 명령은 쓰지 마세요.** 잠그기 전의 페이지를 그대로 올려요.
- **매번 build.sh로 만든 다음 올리세요.** `quarto render`만 하고 올리면 내 화면 전용 탭이 잠기지 않은 채 올라가요.
- 비밀번호 잠금은 개인 일기를 지키기에는 충분하지만, 은행 비밀번호처럼 정말 민감한 정보는 적지 마세요.
- 검색 기능은 꺼 두었어요. 켜면 잠긴 페이지 내용이 검색 색인에 노출될 수 있어요.

## 문제가 생기면

- **build.sh에서 staticrypt 옵션 오류가 날 때**: 잠금 도구 버전에 따라 일부 옵션 이름이 다를 수 있어요. `--template-`로 시작하는 줄과 `--remember 30` 줄을 지우고 다시 실행해 보세요. 잠금 자체에는 영향이 없고, 비밀번호 창의 문구와 색만 기본값으로 바뀌어요.
- **글씨체가 다르게 보일 때**: 구글 웹폰트를 인터넷에서 불러오기 때문에 인터넷이 연결돼 있어야 해요.

## 앞으로 채워갈 것

- 읽은 논문을 `notes` 폴더에 하나씩 추가하기 (Notes 탭에 자동으로 목록이 생겨요)
- 학회 발표, 논문이 생기면 `publications.qmd`와 `cv.qmd`에 추가하기
- 분석 코드를 깃허브에 올리면 `projects.qmd`에 링크하기
