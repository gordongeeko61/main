import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-update-account',
  templateUrl: './update-account.component.html',
  styleUrls: ['./update-account.component.css']
})
export class UpdateAccountComponent {
  sourceEnv: string;
  targetEnv: string;
  accNo: string;
  updateType: string;

  constructor(private http: HttpClient) {}

  onSubmit() {
    const requestBody = {
      sourceEnv: this.sourceEnv,
      targetEnv: this.targetEnv,
      accNo: this.accNo,
      updateType: this.updateType
    };

    this.http.post('http://localhost:5000/api/update-account', requestBody)
      .subscribe(
        response => {
          console.log(response);
          // handle success response
        },
        error => {
          console.log(error);
          // handle error response
        }
      );
  }
}
