# Evaluate the value of an arithmetic expression in Reverse Polish Notation.
# Valid operators are +, -, *, and /. Each operand may be an integer or another expression.

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
    stack = []
    operands = ["+", "-", "*", "/"]
    tokens.each do |el|
        if operands.include?(el)
            o = operands.index(el)
            second = stack.pop
            first = stack.pop

            case o
            when 0
                stack<<(first + second)
            when 1
                stack<<(first - second)

            when 2
                stack<<(first * second)

            when 3
                stack << (first.fdiv(second)).truncate
            end
        else
            stack << el.to_i    
        end
    end
    return stack.pop
end

OPERATORS = ['+', '-', '*', '/']
def eval_rpn_1(tokens)
  tokens.reduce([]) do |stack, token|
    if OPERATORS.include?(token)
      second, first = stack.pop.to_f, stack.pop
      token = first.send(token, second)
    end
    stack.push(token.to_i)
  end.pop
end

ar = ["2","1","+","3","*"]
ar2 = ["4","13","5","/","+"]
ar3 = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
p eval_rpn(ar)
p eval_rpn(ar2)
p eval_rpn(ar3)
p eval_rpn_1(ar3)