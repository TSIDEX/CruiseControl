script_name('Cruise Control Katakitoka')
script_author('TSIDEX')
script_description('������� �� ��������������� �����')


local ������������������������� = require 'katakitoka_language'


function main()
    while true do
        if �������������������������.�������������������������(�������������������������.�������������������������) then
            local _, �������������������������� = �������������������������.�����������������������()
            local ���������������������������� = ('KTKT Cruise Control %s {FFCCCCCC}Speed: {FFFFFF00}%.0f'):format(�������������������������.������������������������ and '{FF00CC00}ON' or '{FFCC0000}OFF', �������������������������.����������������������������������� * 2)
            �������������������������.������������������������(0, �������������������������� - 15, �������������������������.������������������������������(�������������������������.������������������������, ����������������������������) + 10, 15, 0xFF323232)
            �������������������������.�����������������������������(�������������������������.������������������������, ����������������������������, 5, �������������������������� - 15, 0xFFCCCCCC)
            if �������������������������.����������������������������� then
                if �������������������������.�����������������(�������������������������.���������������������(�������������������������.�������������������������)) < �������������������������.����������������������������������� then
                    �������������������������.������������������������������(0xB73458 + 0x20, 1, 255, false)
                end
            end
            if �������������������������.���������������������(83) and �������������������������.������������������������ and not �������������������������.������������������������������� and not �������������������������.���������������������������� then
                �������������������������.����������������������������� = false
            end
            if �������������������������.�������������������(87) and �������������������������.������������������������ and not �������������������������.������������������������������� and not �������������������������.���������������������������� then
                �������������������������.����������������������������������� = �������������������������.�����������������(�������������������������.���������������������(�������������������������.�������������������������))
                �������������������������.����������������������������� = true
            end
        end 
        �������������������������.�����������������������������(0)
    end
end