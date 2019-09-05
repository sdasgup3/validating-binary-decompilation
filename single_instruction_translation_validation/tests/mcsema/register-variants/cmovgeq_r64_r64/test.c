void leaf() {
  __asm__("cmovgeq %rcx, %rbx");
  }

void main() {
  leaf();
}