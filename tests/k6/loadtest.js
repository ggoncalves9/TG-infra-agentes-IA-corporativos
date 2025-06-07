import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = { vus: 20, duration: '1m' };

export default function () {
  const res = http.get('http://localhost:5678/rest/ping');
  check(res, { 'status 200': (r) => r.status === 200 });
  sleep(1);
}


//docker run --rm -i grafana/k6 run - < tests/k6/loadtest.js
