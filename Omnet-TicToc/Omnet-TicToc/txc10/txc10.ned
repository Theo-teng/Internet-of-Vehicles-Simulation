//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
simple Txc10
	{
	    parameters:
	        @display("i=block/routing");
	    gates:
	       input in[];  // declare in[] and out[] to be vector gates
	        output out[];
	}
	
	
	
	//
	// Same as Tictoc8.
	//
	network Tictoc10
	{
	    submodules:
	        tic[6]: Txc10;
	    connections:
	        tic[0].out++ --> {  delay = 100ms; } --> tic[1].in++;
	        tic[0].in++ <-- {  delay = 100ms; } <-- tic[1].out++;
	
	        tic[1].out++ --> {  delay = 100ms; } --> tic[2].in++;
	        tic[1].in++ <-- {  delay = 100ms; } <-- tic[2].out++;
	
	        tic[1].out++ --> {  delay = 100ms; } --> tic[4].in++;
	        tic[1].in++ <-- {  delay = 100ms; } <-- tic[4].out++;
	
	        tic[3].out++ --> {  delay = 100ms; } --> tic[4].in++;
	        tic[3].in++ <-- {  delay = 100ms; } <-- tic[4].out++;
	
	        tic[4].out++ --> {  delay = 100ms; } --> tic[5].in++;
	        tic[4].in++ <-- {  delay = 100ms; } <-- tic[5].out++;
	}