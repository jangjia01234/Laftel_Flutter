'''
[사용 방법]
1. 가상환경(.venv) 활성화
    source .venv/bin/activate
2. /lib/utils/ 경로로 이동
3. Flask 실행
    python laftel_flask.py
4. (Flask, laftel 없을 경우) 설치하기
    pip install flask
    python3 -m pip install laftel
'''

from flask import Flask, jsonify
import laftel

app = Flask(__name__)

@app.route('/search/<query>')
def search(query):
    '''
    GET /search/<query> (ex. http://127.0.0.1:5000/search/나루토)
    laftel.sync.searchAnime 로 검색 결과(SearchResult 리스트)를 가져온 뒤,
    필요한 필드(id, name, image, ...)만 뽑아서 JSON 배열로 반환함
    '''
    results = laftel.sync.searchAnime(query)

    simplified = []
    for r in results:
        # SearchResult 객체에서 화면에 필요한 속성만 골라서 dict 생성
        simplified.append({
            "id":        r.id,
            "name":      r.name,
            "url":       r.url,
            "image":     r.image,
            "adultonly": r.adultonly,
            "genres":    r.genres,
        })
    return jsonify(simplified)

@app.route('/anime/<int:id>')
def anime_info(id):
    info = laftel.sync.getAnimeInfo(id)  # AnimeInfo
    return jsonify(info.__dict__)

if __name__ == '__main__':
    app.run(debug=True)
