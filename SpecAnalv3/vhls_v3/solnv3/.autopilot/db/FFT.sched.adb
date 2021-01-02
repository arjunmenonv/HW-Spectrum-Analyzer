<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>FFT</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>data_IN</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>data_IN</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>win_mode</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>win_mode</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>data_OUT</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>data_OUT</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>mag_OUT</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>mag_OUT</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>14</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>41</id>
						<name>win_mode_read</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>118</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>118</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>win_mode</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>71</item>
					<item>72</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>42</id>
						<name>win_mode_c1</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>118</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>118</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>74</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>43</id>
						<name>win_mode_c</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>118</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>118</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>75</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>58</id>
						<name>_ln118</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>118</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>118</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>77</item>
					<item>78</item>
					<item>79</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.63</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>59</id>
						<name>_ln118</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>118</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>118</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>81</item>
					<item>82</item>
					<item>83</item>
					<item>84</item>
					<item>85</item>
					<item>86</item>
					<item>333</item>
					<item>334</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>60</id>
						<name>_ln149</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>149</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>149</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>12</count>
					<item_version>0</item_version>
					<item>88</item>
					<item>89</item>
					<item>120</item>
					<item>121</item>
					<item>122</item>
					<item>123</item>
					<item>124</item>
					<item>125</item>
					<item>126</item>
					<item>331</item>
					<item>332</item>
					<item>335</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>61</id>
						<name>_ln150</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>150</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>150</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>91</item>
					<item>92</item>
					<item>93</item>
					<item>127</item>
					<item>128</item>
					<item>330</item>
					<item>336</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>62</id>
						<name>_ln151</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>151</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>151</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>95</item>
					<item>96</item>
					<item>97</item>
					<item>98</item>
					<item>99</item>
					<item>129</item>
					<item>130</item>
					<item>329</item>
					<item>337</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>63</id>
						<name>_ln152</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>152</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>152</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>101</item>
					<item>102</item>
					<item>103</item>
					<item>131</item>
					<item>132</item>
					<item>133</item>
					<item>134</item>
					<item>328</item>
					<item>338</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>64</id>
						<name>_ln153</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>153</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>153</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>105</item>
					<item>106</item>
					<item>107</item>
					<item>135</item>
					<item>136</item>
					<item>137</item>
					<item>138</item>
					<item>327</item>
					<item>339</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>65</id>
						<name>_ln154</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>154</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>154</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>109</item>
					<item>110</item>
					<item>111</item>
					<item>139</item>
					<item>140</item>
					<item>141</item>
					<item>142</item>
					<item>326</item>
					<item>340</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>66</id>
						<name>_ln155</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>155</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>155</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>113</item>
					<item>143</item>
					<item>144</item>
					<item>145</item>
					<item>146</item>
					<item>147</item>
					<item>148</item>
					<item>325</item>
					<item>341</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>67</id>
						<name>_ln0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>8</count>
					<item_version>0</item_version>
					<item>115</item>
					<item>116</item>
					<item>117</item>
					<item>118</item>
					<item>119</item>
					<item>149</item>
					<item>324</item>
					<item>342</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>68</id>
						<name>_ln164</name>
						<fileName>vhls_src/fft.cpp</fileName>
						<fileDirectory>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</fileDirectory>
						<lineNumber>164</lineNumber>
						<contextFuncName>FFT</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/arjunmenonv/Arjun_acads/Year3/CompOrg/HW-Spectrum-Analyzer/SpecAnalv3</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>vhls_src/fft.cpp</first>
											<second>FFT</second>
										</first>
										<second>164</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>11</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_19">
				<Value>
					<Obj>
						<type>2</type>
						<id>73</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_20">
				<Value>
					<Obj>
						<type>2</type>
						<id>76</id>
						<name>FFT_entry3</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FFT.entry3&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_21">
				<Value>
					<Obj>
						<type>2</type>
						<id>80</id>
						<name>Block_codeRepl124_pr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Block_codeRepl124_pr&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_22">
				<Value>
					<Obj>
						<type>2</type>
						<id>87</id>
						<name>mult_window</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:mult_window&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_23">
				<Value>
					<Obj>
						<type>2</type>
						<id>90</id>
						<name>bitreverse</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:bitreverse&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_24">
				<Value>
					<Obj>
						<type>2</type>
						<id>94</id>
						<name>FFT0118</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FFT0118&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_25">
				<Value>
					<Obj>
						<type>2</type>
						<id>100</id>
						<name>FFT0119</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FFT0119&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_26">
				<Value>
					<Obj>
						<type>2</type>
						<id>104</id>
						<name>FFT0120</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FFT0120&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_27">
				<Value>
					<Obj>
						<type>2</type>
						<id>108</id>
						<name>FFT0121</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FFT0121&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_28">
				<Value>
					<Obj>
						<type>2</type>
						<id>112</id>
						<name>FFT0122</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:FFT0122&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_29">
				<Value>
					<Obj>
						<type>2</type>
						<id>114</id>
						<name>Block_codeRepl12432_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:Block_codeRepl12432_&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_30">
				<Obj>
					<type>3</type>
					<id>69</id>
					<name>FFT</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>14</count>
					<item_version>0</item_version>
					<item>41</item>
					<item>42</item>
					<item>43</item>
					<item>58</item>
					<item>59</item>
					<item>60</item>
					<item>61</item>
					<item>62</item>
					<item>63</item>
					<item>64</item>
					<item>65</item>
					<item>66</item>
					<item>67</item>
					<item>68</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>86</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_31">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>41</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>74</id>
				<edge_type>1</edge_type>
				<source_obj>73</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>73</source_obj>
				<sink_obj>43</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>76</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>41</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>80</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>87</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>91</id>
				<edge_type>1</edge_type>
				<source_obj>90</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>92</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>94</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>96</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>97</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>98</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>100</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>102</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>103</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>104</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>109</id>
				<edge_type>1</edge_type>
				<source_obj>108</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>112</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>115</id>
				<edge_type>1</edge_type>
				<source_obj>114</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>121</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>122</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>126</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>127</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>128</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>129</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>130</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>131</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>132</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>133</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>134</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>135</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>136</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>137</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>138</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>139</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>140</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>141</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>142</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>143</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>144</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>145</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>146</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>147</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>148</id>
				<edge_type>1</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>149</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>324</id>
				<edge_type>4</edge_type>
				<source_obj>66</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>325</id>
				<edge_type>4</edge_type>
				<source_obj>65</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>326</id>
				<edge_type>4</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_101">
				<id>327</id>
				<edge_type>4</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_102">
				<id>328</id>
				<edge_type>4</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_103">
				<id>329</id>
				<edge_type>4</edge_type>
				<source_obj>61</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_104">
				<id>330</id>
				<edge_type>4</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_105">
				<id>331</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_106">
				<id>332</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_107">
				<id>333</id>
				<edge_type>4</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_108">
				<id>334</id>
				<edge_type>4</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_109">
				<id>335</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_110">
				<id>336</id>
				<edge_type>4</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_111">
				<id>337</id>
				<edge_type>4</edge_type>
				<source_obj>61</source_obj>
				<sink_obj>62</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_112">
				<id>338</id>
				<edge_type>4</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>63</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_113">
				<id>339</id>
				<edge_type>4</edge_type>
				<source_obj>63</source_obj>
				<sink_obj>64</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_114">
				<id>340</id>
				<edge_type>4</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>65</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_115">
				<id>341</id>
				<edge_type>4</edge_type>
				<source_obj>65</source_obj>
				<sink_obj>66</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_116">
				<id>342</id>
				<edge_type>4</edge_type>
				<source_obj>66</source_obj>
				<sink_obj>67</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_117">
			<mId>1</mId>
			<mTag>FFT</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>69</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>365</mMinLatency>
			<mMaxLatency>365</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_118">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>10</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_119">
						<type>0</type>
						<name>FFT_entry3_U0</name>
						<ssdmobj_id>58</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>2</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_120">
								<port class_id="29" tracking_level="1" version="0" object_id="_121">
									<name>win_mode</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_122">
									<type>0</type>
									<name>FFT_entry3_U0</name>
									<ssdmobj_id>58</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_123">
								<port class_id_reference="29" object_id="_124">
									<name>win_mode_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_122"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_125">
						<type>0</type>
						<name>Block_codeRepl124_pr_U0</name>
						<ssdmobj_id>59</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_126">
								<port class_id_reference="29" object_id="_127">
									<name>data_IN</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_128">
									<type>0</type>
									<name>Block_codeRepl124_pr_U0</name>
									<ssdmobj_id>59</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_129">
								<port class_id_reference="29" object_id="_130">
									<name>xin_M_imag</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_128"></inst>
							</item>
							<item class_id_reference="28" object_id="_131">
								<port class_id_reference="29" object_id="_132">
									<name>xin_M_real</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_128"></inst>
							</item>
							<item class_id_reference="28" object_id="_133">
								<port class_id_reference="29" object_id="_134">
									<name>win_mode</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_128"></inst>
							</item>
							<item class_id_reference="28" object_id="_135">
								<port class_id_reference="29" object_id="_136">
									<name>win_mode_out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_128"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_137">
						<type>0</type>
						<name>mult_window_U0</name>
						<ssdmobj_id>60</ssdmobj_id>
						<pins>
							<count>8</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_138">
								<port class_id_reference="29" object_id="_139">
									<name>win_mode</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_140">
									<type>0</type>
									<name>mult_window_U0</name>
									<ssdmobj_id>60</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_141">
								<port class_id_reference="29" object_id="_142">
									<name>Blackman32</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_140"></inst>
							</item>
							<item class_id_reference="28" object_id="_143">
								<port class_id_reference="29" object_id="_144">
									<name>Hamm32</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_140"></inst>
							</item>
							<item class_id_reference="28" object_id="_145">
								<port class_id_reference="29" object_id="_146">
									<name>Hann32</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_140"></inst>
							</item>
							<item class_id_reference="28" object_id="_147">
								<port class_id_reference="29" object_id="_148">
									<name>xin_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_140"></inst>
							</item>
							<item class_id_reference="28" object_id="_149">
								<port class_id_reference="29" object_id="_150">
									<name>xin_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_140"></inst>
							</item>
							<item class_id_reference="28" object_id="_151">
								<port class_id_reference="29" object_id="_152">
									<name>prod_IN_M_real</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_140"></inst>
							</item>
							<item class_id_reference="28" object_id="_153">
								<port class_id_reference="29" object_id="_154">
									<name>prod_IN_M_imag</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_140"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_155">
						<type>0</type>
						<name>bitreverse_U0</name>
						<ssdmobj_id>61</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_156">
								<port class_id_reference="29" object_id="_157">
									<name>prod_IN_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_158">
									<type>0</type>
									<name>bitreverse_U0</name>
									<ssdmobj_id>61</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_159">
								<port class_id_reference="29" object_id="_160">
									<name>prod_IN_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_158"></inst>
							</item>
							<item class_id_reference="28" object_id="_161">
								<port class_id_reference="29" object_id="_162">
									<name>data_OUT0_M_real</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_158"></inst>
							</item>
							<item class_id_reference="28" object_id="_163">
								<port class_id_reference="29" object_id="_164">
									<name>data_OUT0_M_imag</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_158"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_165">
						<type>0</type>
						<name>FFT0118_U0</name>
						<ssdmobj_id>62</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_166">
								<port class_id_reference="29" object_id="_167">
									<name>data_IN_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_168">
									<type>0</type>
									<name>FFT0118_U0</name>
									<ssdmobj_id>62</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_169">
								<port class_id_reference="29" object_id="_170">
									<name>data_IN_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_168"></inst>
							</item>
							<item class_id_reference="28" object_id="_171">
								<port class_id_reference="29" object_id="_172">
									<name>data_OUT1_M_imag</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_168"></inst>
							</item>
							<item class_id_reference="28" object_id="_173">
								<port class_id_reference="29" object_id="_174">
									<name>data_OUT1_M_real</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_168"></inst>
							</item>
							<item class_id_reference="28" object_id="_175">
								<port class_id_reference="29" object_id="_176">
									<name>W_M_real130</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_168"></inst>
							</item>
							<item class_id_reference="28" object_id="_177">
								<port class_id_reference="29" object_id="_178">
									<name>W_M_imag126</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_168"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_179">
						<type>0</type>
						<name>FFT0119_U0</name>
						<ssdmobj_id>63</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_180">
								<port class_id_reference="29" object_id="_181">
									<name>data_OUT2_M_imag</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_182">
									<type>0</type>
									<name>FFT0119_U0</name>
									<ssdmobj_id>63</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_183">
								<port class_id_reference="29" object_id="_184">
									<name>data_OUT2_M_real</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_182"></inst>
							</item>
							<item class_id_reference="28" object_id="_185">
								<port class_id_reference="29" object_id="_186">
									<name>W_M_real129</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_182"></inst>
							</item>
							<item class_id_reference="28" object_id="_187">
								<port class_id_reference="29" object_id="_188">
									<name>W_M_imag125</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_182"></inst>
							</item>
							<item class_id_reference="28" object_id="_189">
								<port class_id_reference="29" object_id="_190">
									<name>data_OUT1_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_182"></inst>
							</item>
							<item class_id_reference="28" object_id="_191">
								<port class_id_reference="29" object_id="_192">
									<name>data_OUT1_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_182"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_193">
						<type>0</type>
						<name>FFT0120_U0</name>
						<ssdmobj_id>64</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_194">
								<port class_id_reference="29" object_id="_195">
									<name>data_OUT3_M_imag</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_196">
									<type>0</type>
									<name>FFT0120_U0</name>
									<ssdmobj_id>64</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_197">
								<port class_id_reference="29" object_id="_198">
									<name>data_OUT3_M_real</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="28" object_id="_199">
								<port class_id_reference="29" object_id="_200">
									<name>W_M_real128</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="28" object_id="_201">
								<port class_id_reference="29" object_id="_202">
									<name>W_M_imag124</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="28" object_id="_203">
								<port class_id_reference="29" object_id="_204">
									<name>data_OUT2_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_196"></inst>
							</item>
							<item class_id_reference="28" object_id="_205">
								<port class_id_reference="29" object_id="_206">
									<name>data_OUT2_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_196"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_207">
						<type>0</type>
						<name>FFT0121_U0</name>
						<ssdmobj_id>65</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_208">
								<port class_id_reference="29" object_id="_209">
									<name>data_OUT4_M_imag</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_210">
									<type>0</type>
									<name>FFT0121_U0</name>
									<ssdmobj_id>65</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_211">
								<port class_id_reference="29" object_id="_212">
									<name>data_OUT4_M_real</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_210"></inst>
							</item>
							<item class_id_reference="28" object_id="_213">
								<port class_id_reference="29" object_id="_214">
									<name>W_M_real127</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_210"></inst>
							</item>
							<item class_id_reference="28" object_id="_215">
								<port class_id_reference="29" object_id="_216">
									<name>W_M_imag123</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_210"></inst>
							</item>
							<item class_id_reference="28" object_id="_217">
								<port class_id_reference="29" object_id="_218">
									<name>data_OUT3_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_210"></inst>
							</item>
							<item class_id_reference="28" object_id="_219">
								<port class_id_reference="29" object_id="_220">
									<name>data_OUT3_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_210"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_221">
						<type>0</type>
						<name>FFT0122_U0</name>
						<ssdmobj_id>66</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_222">
								<port class_id_reference="29" object_id="_223">
									<name>W_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_224">
									<type>0</type>
									<name>FFT0122_U0</name>
									<ssdmobj_id>66</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_225">
								<port class_id_reference="29" object_id="_226">
									<name>W_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_224"></inst>
							</item>
							<item class_id_reference="28" object_id="_227">
								<port class_id_reference="29" object_id="_228">
									<name>data_OUT4_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_224"></inst>
							</item>
							<item class_id_reference="28" object_id="_229">
								<port class_id_reference="29" object_id="_230">
									<name>data_OUT4_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_224"></inst>
							</item>
							<item class_id_reference="28" object_id="_231">
								<port class_id_reference="29" object_id="_232">
									<name>data_OUTfft_M_real</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_224"></inst>
							</item>
							<item class_id_reference="28" object_id="_233">
								<port class_id_reference="29" object_id="_234">
									<name>data_OUTfft_M_imag</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_224"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_235">
						<type>0</type>
						<name>Block_codeRepl12432_U0</name>
						<ssdmobj_id>67</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_236">
								<port class_id_reference="29" object_id="_237">
									<name>mag_OUT</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id="_238">
									<type>0</type>
									<name>Block_codeRepl12432_U0</name>
									<ssdmobj_id>67</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_239">
								<port class_id_reference="29" object_id="_240">
									<name>data_OUT</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_238"></inst>
							</item>
							<item class_id_reference="28" object_id="_241">
								<port class_id_reference="29" object_id="_242">
									<name>data_OUTfft_M_imag</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_238"></inst>
							</item>
							<item class_id_reference="28" object_id="_243">
								<port class_id_reference="29" object_id="_244">
									<name>data_OUTfft_M_real</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_238"></inst>
							</item>
							<item class_id_reference="28" object_id="_245">
								<port class_id_reference="29" object_id="_246">
									<name>xout_mag</name>
									<dir>2</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_238"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>18</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_247">
						<type>1</type>
						<name>win_mode_c1</name>
						<ssdmobj_id>42</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_248">
							<port class_id_reference="29" object_id="_249">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_122"></inst>
						</source>
						<sink class_id_reference="28" object_id="_250">
							<port class_id_reference="29" object_id="_251">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_128"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_252">
						<type>1</type>
						<name>xin_M_imag</name>
						<ssdmobj_id>6</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_253">
							<port class_id_reference="29" object_id="_254">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_128"></inst>
						</source>
						<sink class_id_reference="28" object_id="_255">
							<port class_id_reference="29" object_id="_256">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_140"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_257">
						<type>1</type>
						<name>xin_M_real</name>
						<ssdmobj_id>7</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_258">
							<port class_id_reference="29" object_id="_259">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_128"></inst>
						</source>
						<sink class_id_reference="28" object_id="_260">
							<port class_id_reference="29" object_id="_261">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_140"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_262">
						<type>1</type>
						<name>win_mode_c</name>
						<ssdmobj_id>43</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_263">
							<port class_id_reference="29" object_id="_264">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_128"></inst>
						</source>
						<sink class_id_reference="28" object_id="_265">
							<port class_id_reference="29" object_id="_266">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_140"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_267">
						<type>1</type>
						<name>prod_IN_M_real</name>
						<ssdmobj_id>14</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_268">
							<port class_id_reference="29" object_id="_269">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_140"></inst>
						</source>
						<sink class_id_reference="28" object_id="_270">
							<port class_id_reference="29" object_id="_271">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_158"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_272">
						<type>1</type>
						<name>prod_IN_M_imag</name>
						<ssdmobj_id>15</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_273">
							<port class_id_reference="29" object_id="_274">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_140"></inst>
						</source>
						<sink class_id_reference="28" object_id="_275">
							<port class_id_reference="29" object_id="_276">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_158"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_277">
						<type>1</type>
						<name>data_OUT0_M_real</name>
						<ssdmobj_id>16</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_278">
							<port class_id_reference="29" object_id="_279">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_158"></inst>
						</source>
						<sink class_id_reference="28" object_id="_280">
							<port class_id_reference="29" object_id="_281">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_168"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_282">
						<type>1</type>
						<name>data_OUT0_M_imag</name>
						<ssdmobj_id>17</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_283">
							<port class_id_reference="29" object_id="_284">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_158"></inst>
						</source>
						<sink class_id_reference="28" object_id="_285">
							<port class_id_reference="29" object_id="_286">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_168"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_287">
						<type>1</type>
						<name>data_OUT1_M_imag</name>
						<ssdmobj_id>22</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_288">
							<port class_id_reference="29" object_id="_289">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_168"></inst>
						</source>
						<sink class_id_reference="28" object_id="_290">
							<port class_id_reference="29" object_id="_291">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_182"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_292">
						<type>1</type>
						<name>data_OUT1_M_real</name>
						<ssdmobj_id>23</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_293">
							<port class_id_reference="29" object_id="_294">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_168"></inst>
						</source>
						<sink class_id_reference="28" object_id="_295">
							<port class_id_reference="29" object_id="_296">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_182"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_297">
						<type>1</type>
						<name>data_OUT2_M_imag</name>
						<ssdmobj_id>26</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_298">
							<port class_id_reference="29" object_id="_299">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_182"></inst>
						</source>
						<sink class_id_reference="28" object_id="_300">
							<port class_id_reference="29" object_id="_301">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_196"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_302">
						<type>1</type>
						<name>data_OUT2_M_real</name>
						<ssdmobj_id>27</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_303">
							<port class_id_reference="29" object_id="_304">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_182"></inst>
						</source>
						<sink class_id_reference="28" object_id="_305">
							<port class_id_reference="29" object_id="_306">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_196"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_307">
						<type>1</type>
						<name>data_OUT3_M_imag</name>
						<ssdmobj_id>30</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_308">
							<port class_id_reference="29" object_id="_309">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_196"></inst>
						</source>
						<sink class_id_reference="28" object_id="_310">
							<port class_id_reference="29" object_id="_311">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_210"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_312">
						<type>1</type>
						<name>data_OUT3_M_real</name>
						<ssdmobj_id>31</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_313">
							<port class_id_reference="29" object_id="_314">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_196"></inst>
						</source>
						<sink class_id_reference="28" object_id="_315">
							<port class_id_reference="29" object_id="_316">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_210"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_317">
						<type>1</type>
						<name>data_OUT4_M_imag</name>
						<ssdmobj_id>34</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_318">
							<port class_id_reference="29" object_id="_319">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_210"></inst>
						</source>
						<sink class_id_reference="28" object_id="_320">
							<port class_id_reference="29" object_id="_321">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_224"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_322">
						<type>1</type>
						<name>data_OUT4_M_real</name>
						<ssdmobj_id>35</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_323">
							<port class_id_reference="29" object_id="_324">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_210"></inst>
						</source>
						<sink class_id_reference="28" object_id="_325">
							<port class_id_reference="29" object_id="_326">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_224"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_327">
						<type>1</type>
						<name>data_OUTfft_M_real</name>
						<ssdmobj_id>38</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_328">
							<port class_id_reference="29" object_id="_329">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_224"></inst>
						</source>
						<sink class_id_reference="28" object_id="_330">
							<port class_id_reference="29" object_id="_331">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_238"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_332">
						<type>1</type>
						<name>data_OUTfft_M_imag</name>
						<ssdmobj_id>39</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_333">
							<port class_id_reference="29" object_id="_334">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_224"></inst>
						</source>
						<sink class_id_reference="28" object_id="_335">
							<port class_id_reference="29" object_id="_336">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_238"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>14</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>41</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>42</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>43</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>58</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>59</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>60</first>
			<second>
				<first>3</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>61</first>
			<second>
				<first>5</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>62</first>
			<second>
				<first>7</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>63</first>
			<second>
				<first>9</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>64</first>
			<second>
				<first>11</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>65</first>
			<second>
				<first>13</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>66</first>
			<second>
				<first>15</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>67</first>
			<second>
				<first>17</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>68</first>
			<second>
				<first>19</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>69</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>19</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_337">
			<region_name>FFT</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>69</item>
			</basic_blocks>
			<nodes>
				<count>28</count>
				<item_version>0</item_version>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
				<item>63</item>
				<item>64</item>
				<item>65</item>
				<item>66</item>
				<item>67</item>
				<item>68</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

