import { Component, IterableDiffers, OnInit } from '@angular/core';
import { Router } from '@angular/router';


@Component({
  selector: 'app-pay',
  templateUrl: './pay.component.html',
  styles: [
  ]
})
export class PayComponent implements OnInit {

  infor:any
  infor_router:any
  infor_seat:any

  isPay = false;

  constructor(private router: Router) { }

  ngOnInit(): void {
    this.infor = JSON.parse(sessionStorage.getItem('b3'));
    this.infor_seat = JSON.parse(sessionStorage.getItem('b2'));
    this.infor_router = JSON.parse(sessionStorage.getItem('b1'));

    this.infor_seat.seats = this.ConvertSeats(this.infor_seat.seats);

    console.log(this.infor_seat);
  }

  onPay(){
    this.isPay = true;
  }

  isSelect = false
  onSelect(index:any){
    index==1||index==2?window.alert('Thẻ này chưa được cập nhật'):this.isSelect=true
  }

  ConvertSeats(listSeats:any){
    var list = [];
    for(let i of listSeats){
      if(i<10){
        list.push("A0"+i);
      }
      else if(i>=10&&i<=22){
        list.push("A"+i);
      }
      else if(i-22<10){
        list.push("B0"+(i-22));
      }
      else{
        list.push("B"+(i-22));
      }
    }
    return list;
  }
}
