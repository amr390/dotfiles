import React from 'react';
import { Controls } from './Controls';
import { Step } from './Step';
import './Timeline.scss';

interface Item {
  id: number;
  header: string;
  body: string;
  img: string;
  color: string;
}

interface Props {
  data: Item[];
}

interface Style {
  backgroundImage?: string;
  background?: string;
  backgroundColor?: string;
  color?: string;
}

interface State {
  activeID: number;
  wrapperStyle: Style; 
  panelStyle: Style;
  buttonHover: boolean;
  buttonStyle: Style;
}

export class Timeline extends React.Component<Props, State> {
  constructor(props: Props) {
    super(props);
    this.state = {
      activeID: 0,
      wrapperStyle: {
        backgroundImage: `url('${this.props.data[0].img}')`
      },
      panelStyle: {
        background: this.props.data[0].color
      },
      buttonHover: false,
      buttonStyle: {
        color: '#ffffff'
      }
    };
  }

  private changeActive(id: number) {
    this.setState({
      activeID: id,
      wrapperStyle: {
        backgroundImage: `url('${this.props.data[id].img}')`
      },
      panelStyle: {
        backgroundColor: this.props.data[id].color
      }
    });
  }

  private buttonColour() {
    if(!this.state.buttonHover){
      this.setState({
        buttonHover: true,
        buttonStyle: {
          color: this.props.data[this.state.activeID].color
        }
      });
    } else {
      this.setState({
        buttonHover: false,
        buttonStyle: {
          color: '#ffffff'
        }
      });
    }
  }
  
  render() {
    return (
      <section className="wrapper" style={this.state.wrapperStyle}>
        <Controls
          data={this.props.data}
          activeID={this.state.activeID}
          changeActive={this.changeActive.bind(this)}
        />
        <Step
          data={this.props.data[this.state.activeID]}
          panelStyle={this.state.panelStyle}
          buttonStyle={this.state.buttonStyle}
          buttonColour={this.buttonColour.bind(this)}
        />
      </section>
    );
  }
}

