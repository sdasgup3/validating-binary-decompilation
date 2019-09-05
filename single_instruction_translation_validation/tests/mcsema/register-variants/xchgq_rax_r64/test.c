void leaf() {
  __asm__("xchgq %rbx, %rax");
  }

void main() {
  leaf();
}