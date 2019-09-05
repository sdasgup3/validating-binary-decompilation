void leaf() {
  __asm__("xchgq %rax, %rbx");
  }

void main() {
  leaf();
}