import http from '@ohos.net.http';
import { ResponseResult } from '../viewmodel/ResponseResult';
import Logger from './Logger';

export function httpRequestGet(url: string): Promise<ResponseResult> {
  let httpRequest = http.createHttp();
  let responseResult = httpRequest.request(url, {
    method: http.RequestMethod.GET,
    readTimeout: 2000,
    header: {
      'Content-Type': 'application/json'
    },
    connectTimeout:2000,
    extraData: {}
  });
  let serverData: ResponseResult = new ResponseResult();
  // Processes the data and returns.
  return responseResult.then((value: http.HttpResponse) => {
    Logger.debug("QQQ" + JSON.stringify(value.result))
    if (value.responseCode === 200) {
      // Obtains the returned data.
      let result = `${value.result}`;
      let resultJson: ResponseResult = JSON.parse(result);
      if (resultJson.code === 'success') {
        serverData.data = resultJson.data;
      }
      serverData.code = resultJson.code;
      serverData.msg = resultJson.msg;
    } else {
    }
    return serverData;
  }).catch(() => {
    Logger.debug("QQQ" + JSON.stringify(serverData))
    return serverData;
  })
}