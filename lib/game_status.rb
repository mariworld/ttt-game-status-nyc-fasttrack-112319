# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2],
]

def won?(board)
    WIN_COMBINATIONS.each do |combo|
        win_index_1 = combo[0]
        win_index_2 = combo[1]
        win_index_3 = combo[2]
        pos_1 = board[win_index_1]
        pos_2 = board[win_index_2]
        pos_3 = board[win_index_3]
        if board == " "
            return false
        elsif (pos_1 == "X" && pos_2 == "X" && pos_3 == "X") or (pos_1 == "O" && pos_2 == "O" && pos_3 == "O")
            return combo
        end
    end
end
