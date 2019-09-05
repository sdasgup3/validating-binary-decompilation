void leaf() {
  __asm__("mulxq %rcx, %rbx, %rax");
  }

void main() {
  leaf();
}