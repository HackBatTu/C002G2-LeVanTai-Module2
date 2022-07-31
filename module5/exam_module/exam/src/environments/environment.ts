// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

import {initializeApp} from 'firebase/app';
import {getAnalytics} from 'firebase/analytics';

export const environment = {
  production: false,
  apiUrl: 'http://localhost:5000',
  firebaseConfig: {
    apiKey: 'AIzaSyACkU9AV5LAugCzfNI5hw4pyx2owsmIqs8',
    authDomain: 'fir-upload-e84f1.firebaseapp.com',
    databaseUrl: 'http://fir-upload-e84f1,firebaseio.com',
    projectId: 'fir-upload-e84f1',
    storageBucket: 'fir-upload-e84f1.appspot.com',
    messagingSenderId: '906156026637',
    appId: '1:906156026637:web:5944ecef83e7364ccfde44',
    measurementId: 'G-BSXMPFPZZM'
  }
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.
// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional

;
