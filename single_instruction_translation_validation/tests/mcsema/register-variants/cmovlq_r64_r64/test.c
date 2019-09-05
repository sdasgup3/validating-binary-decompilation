void leaf() {
  __asm__("cmovlq %rcx, %rbx");
  }

void main() {
  leaf();
}