import { Component } from 'react';
import './TLComp.scss';

interface IItem {
  name: string;
  active: boolean;
}

interface IProps {
        items: IItem[];
}

// Example props
// const items = [
//   {
//     name: "Step 1",
//     active: true,
//   },
//   {
//     name: "Step 2",
//     active: true,
//   },
//   {
//     name: "Step 3",
//     active: true,
//   },
//   {
//     name: "Step 4",
//     active: false,
//   },
// ];

export default class Timeline extends Component<IProps, {}> {

  render() {
    const { items } = this.props;
    const totalItems = items.length;
    const numberOfActiveItems = items.filter(item => item.active).length;
    const progressBarWidth = totalItems > 1 ? (numberOfActiveItems - 1) / (totalItems - 1) * 100 : 0;

    return (
      <div className="timeline">
        <div className="timeline-progress" style={{ width: `${progressBarWidth}%` }}> </div>
        <div className="timeline-items">
          {
            items.map(item =>
              <div className={`timeline-item ${item.active && 'active'}`}>
                <div className="timeline-content">
                  {item.name}
                </div>
              </div>
            )
          }
        </div>
      </div>
    )
  }
}
