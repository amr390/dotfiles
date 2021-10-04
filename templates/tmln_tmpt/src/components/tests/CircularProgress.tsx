import React, { useEffect, useState } from 'react';
/*
const props = {
size: 250,
strokeWidth: 20,
percentage: 10,
color: 'green'
}
*/

interface IProps {
  size: number;
  strokeWidth: number;
  percentage: number;
  color: string;
}
/*
https://medium.com/tinyso/how-to-create-an-animated-svg-circular-progress-component-in-react-5123c7d24391
*/
const CircularProgress: React.FC<IProps> = ({size, strokeWidth, percentage, color}) => {
  const [progress, setProgress] = useState(0);
  useEffect( ()=> {
    setProgress(percentage);
  }, [percentage]);
  const viewBox = `0 0 ${size} ${size}`;
  const radius = (size - strokeWidth) / 2;
  const circumference = radius * Math.PI * 2;
  const dash = (percentage * circumference) / 100;

  return (
    <svg width={size} height={size} viewBox={viewBox}>
      <circle
        fill="none"
        stroke="#ccc"
        cx={size / 2}
        cy={size / 2}
        r={radius}
        strokeWidth={`${strokeWidth}px`}
        />
      <circle
        fill="none"
        stroke={color}
        cx={size / 2}
        cy={size / 2}
        r={radius}
        strokeWidth={`${strokeWidth}px`}
        transform={`rotate(-90 ${size /2} ${size /2})`}
        strokeDasharray={`${dash} ${circumference - dash}`}
        strokeLinecap="round"
        style={{ transition: "all 0.5s" }}
        />
      <text
        fill="black"
        fontSize="40px"
        x="50%"
        y="50%"
        dy="20px"
        textAnchor="middle"
      >
        {`${percentage}%`}
      </text>

    </svg>
  );
};

export default CircularProgress;
