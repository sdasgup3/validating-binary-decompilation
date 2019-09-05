void leaf() {
  __asm__("idivq %rbx");
  }

void main() {
  leaf();
}