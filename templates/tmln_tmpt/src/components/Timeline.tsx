import { Component } from 'react';
import './Timeline.scss';

interface IItem {
  name: string;
  active: boolean;
}

interface IProps {
  items: IItem[];
}

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



