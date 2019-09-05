void leaf() {
  __asm__("cmovneq %rcx, %rbx");
  }

void main() {
  leaf();
}