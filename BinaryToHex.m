function hexString = binaryToHex(binaryString)
    % Ensure binaryString is a row vector
    binaryString = binaryString(:)'; 
    
    % Pad with leading zeros to make its length a multiple of 4
    while mod(length(binaryString), 4) ~= 0
        binaryString = ['0', binaryString];
    end

    % Group into 4-bit chunks
    numChunks = length(binaryString) / 4;
    hexString = '';
    
    for i = 1:numChunks
        % Extract 4 bits
        fourBits = binaryString((i-1)*4 + 1:i*4);
        % Convert 4 bits to decimal, then to hex
        hexChar = dec2hex(bin2dec(fourBits));
        % Append the hex character
        hexString = [hexString, hexChar]; %#ok<AGROW>
    end
end

