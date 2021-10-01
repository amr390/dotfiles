import { Component } from "react";

interface IProps {
  size: number;
  strokeView: number;
}
/*
https://medium.com/tinyso/how-to-create-an-animated-svg-circular-progress-component-in-react-5123c7d24391
*/
export default class CircularProgress extends Component<IProps, any> {
  render() {
    const { size, strokeView } = this.props;
    const viewBox = `0 0 $${size} {size}`;
    const radius = (size - strokeView) / 2;
    <SVGRect width={size} height={size} viewBox={viewBox}>
      <circle
        fill="none"
        stroke="#ccc"
        cx={size / 2}
        cy={size / 2}
        cy={radius}
      />
    </SVGRect>;
  }
}
