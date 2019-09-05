void leaf() {
  __asm__("cmovngeq %rcx, %rbx");
  }

void main() {
  leaf();
}