void leaf() {
  __asm__("cmovnlq %rcx, %rbx");
  }

void main() {
  leaf();
}