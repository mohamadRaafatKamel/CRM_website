import {
  query,
  style,
  transition,
  trigger,
  animateChild,
  group,
  animate,
} from '@angular/animations';

export const slideInAnimation = trigger('routeAnimations', [
  transition('HomePage <=> AboutPage', [
    style({ position: 'relative' }),
    query(':enter, :leave', [
      style({
        position: 'absolute',
        top: 0,
        left: 0,
        width: '100%',
        opacity: 1
      }),
    ]),
    query(':enter', [style({
      // left: '-100%',
      opacity: 0
    })]),
    query(':leave', animateChild()),
    group([
      query(':leave', [animate('200ms ease-out', style({
        //  left: '100%',
      opacity: 0 }))]),
      query(':enter', [animate('200ms ease-out', style({
        //  left: '0%',
      opacity: 1 }))]),
    ]),
    query(':enter', animateChild()),
  ]),
  transition('* <=> FilterPage', [
    style({ position: 'relative' }),
    query(':enter, :leave', [
      style({
        position: 'absolute',
        top: 0,
        left: 0,
        width: '100%',
        opacity: 1,
      }),
    ]),
    query(':enter', [style({
      // left: '-100%',
      opacity: 0})]),
    query(':leave', animateChild()),
    group([
      query(':leave', [animate('200ms ease-out', style({
        // left: '100%'  ,
        opacity: 0}))]),
      query(':enter', [animate('300ms ease-out', style({
        // left: '0%' ,
        opacity: 1 }))]),
    ]),
    query(':enter', animateChild()),
  ]),
]);
export const fadeSlideInOut = trigger('fadeSlideInOut', [
  transition(':enter', [
    style({ opacity: 0, transform: 'translateY(100px) scale(0) ' }),
    animate('0.3s', style({ opacity: 1, transform: 'translateY(0) scale(1)' })),
  ]),
  transition(':leave', [
    animate('0.3s', style({ opacity: 0, transform: 'translateY(100px) scale(0)' })),
  ]),
])
export const slideRight = trigger('slideRight', [
  transition(':enter', [
    style({ opacity: 0, transform: 'translateX(100px)  ' }),
    animate('0.3s', style({ opacity: 1, transform: 'translateX(0) ' })),
  ]),
  // transition(':leave', [
  //   animate('1s', style({ opacity: 0, transform: 'translateX(100px) ' })),
  // ]),
])
export const slideLeft = trigger('slideLeft', [
  transition(':enter', [
    style({ opacity: 0, transform: 'translateX(-100px)  ' }),
    animate('0.3s', style({ opacity: 1, transform: 'translateX(0) ' })),
  ]),
  // transition(':leave', [
  //   animate('0.8s', style({ opacity: 0, transform: 'translateX(-100px) ',display:'inline' })),
  // ]),
])
