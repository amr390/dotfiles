import React from 'react';
import { Timeline } from './Timeline';


const data = [{
  id: 0,
  header: 'Gluten-free Bicycle',
  body: 'Chillwave knausgaard chambray flannel tumblr, narwhal microdosing blog...',
  color: '#242846',
  img: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/735173/rvc1.jpg'
}, {
  id: 1,
  header: 'Post-ironic Disrupt',
  body: 'Swag biodiesel disrupt retro fashion, salvia food truck kitsch wolf DIY...',
  color: '#ba9077',
  img: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/735173/rvc2.jpg'
}, {
  id: 2,
  header: 'Lumber-Sexual Roof Party ',
  body: 'Flexitarian 3 wolf moon cliche, migas scenester street art...',
  color: '#1ABC9C',
  img: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/735173/rvc3.jpg'
}, {
  id: 3,
  header: 'Vegan hoodie trust fund',
  body: 'Farm-to-table tousled try-hard, normcore ethical tilde iPhone...',
  color: '#C0392B',
  img: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/735173/rvc4.jpg'
}, {
  id: 4,
  header: 'cliche craft beer',
  body: 'Tote bag flannel normcore polaroid +1. Quinoa actually 90s sustainable...',
  color: '#513B56',
  img: 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/735173/rvc5.jpg'
}];

export const TimelineApp: React.FC = ()=>
  <Timeline data={data} />
